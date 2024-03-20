(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_attached_disk = {
  device_name : string prop option; [@option]
      (** Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. *)
  disk : string prop;
      (** name or self_link of the disk that will be attached. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider. *)
  mode : string prop option; [@option]
      (** The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. *)
  project : string prop option; [@option]
      (** The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. *)
  zone : string prop option; [@option]
      (** The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_attached_disk *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_attached_disk ?device_name ?id ?mode ?project
    ?zone ?timeouts ~disk ~instance () : google_compute_attached_disk
    =
  { device_name; disk; id; instance; mode; project; zone; timeouts }

type t = {
  device_name : string prop;
  disk : string prop;
  id : string prop;
  instance : string prop;
  mode : string prop;
  project : string prop;
  zone : string prop;
}

let make ?device_name ?id ?mode ?project ?zone ?timeouts ~disk
    ~instance __id =
  let __type = "google_compute_attached_disk" in
  let __attrs =
    ({
       device_name = Prop.computed __type __id "device_name";
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       mode = Prop.computed __type __id "mode";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_attached_disk
        (google_compute_attached_disk ?device_name ?id ?mode ?project
           ?zone ?timeouts ~disk ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?device_name ?id ?mode ?project ?zone
    ?timeouts ~disk ~instance __id =
  let (r : _ Tf_core.resource) =
    make ?device_name ?id ?mode ?project ?zone ?timeouts ~disk
      ~instance __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
