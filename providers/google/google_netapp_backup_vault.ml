(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_netapp_backup_vault = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location (region) of the backup vault. *)
  name : string prop;
      (** The resource name of the backup vault. Needs to be unique per location. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_backup_vault *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_backup_vault ?description ?id ?labels ?project
    ?timeouts ~location ~name () : google_netapp_backup_vault =
  { description; id; labels; location; name; project; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?project ?timeouts ~location ~name
    __id =
  let __type = "google_netapp_backup_vault" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_backup_vault
        (google_netapp_backup_vault ?description ?id ?labels ?project
           ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~location ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
