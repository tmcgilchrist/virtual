(** Various utilities for MacOS processes *)
module Pid = struct
  type t = int64
end


let get_process_status _pid = ""

let get_process_threads _pid = []

type memory_map = {
    address_start : int64;
    address_end : int64;
    perm_read : bool;
    perm_write : bool;
    perm_execute : bool;
    perm_shared : bool;
    offset : int64;
    device_major : int;
    device_minor : int;
    inode : int64;
    pathname : string;
  }

let get_process_memory_maps _pid = []
