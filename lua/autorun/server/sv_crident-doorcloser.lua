-- Most maps seem to have something built in to close doors automatically, but this will work on maps that don't have that functionality

local delay = 5 -- how many seconds to wait before closing the door

hook.Add( "PlayerUse", "Crident-DoorCloser", function( ply, ent )
	if !ent:GetSaveTable().m_bLocked then
	   timer.Create("Crident-DoorCloser:"..ent:EntIndex(), delay, 1, function()
	        if !IsValid(ent) then return end
	        ent:Fire("Close")
	   end) 
	end
end )
