(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secondary_disk = {
  disk : string prop;
      (** Secondary disk for asynchronous replication. *)
}
[@@deriving yojson_of]
(** Secondary disk for asynchronous replication. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_disk_async_replication = {
  id : string prop option; [@option]  (** id *)
  primary_disk : string prop;
      (** Primary disk for asynchronous replication. *)
  secondary_disk : secondary_disk list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_async_replication *)

let secondary_disk ~disk () : secondary_disk = { disk }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_disk_async_replication ?id ?timeouts ~primary_disk
    ~secondary_disk () : google_compute_disk_async_replication =
  { id; primary_disk; secondary_disk; timeouts }

type t = { id : string prop; primary_disk : string prop }

let make ?id ?timeouts ~primary_disk ~secondary_disk __id =
  let __type = "google_compute_disk_async_replication" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       primary_disk = Prop.computed __type __id "primary_disk";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk_async_replication
        (google_compute_disk_async_replication ?id ?timeouts
           ~primary_disk ~secondary_disk ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~primary_disk ~secondary_disk
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~primary_disk ~secondary_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
