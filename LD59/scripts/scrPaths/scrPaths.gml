
/// @function scrSetPath(instance, newPath)
/// @description ends old path and sets a new one, starting it
/// @param {Id.Instance} instance which isntance to set the path on
/// @param {Id.Path} newPath which path to start
function scrSetPath(instance, newPath){

	with (instance) {
		path_end()
		path = newPath
		path_start(path, pSpeed, path_action_reverse, false)
	}

}