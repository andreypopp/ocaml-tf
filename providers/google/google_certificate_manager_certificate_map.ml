(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type gclb_targets__ip_configs = {
  ip_address : string prop;  (** ip_address *)
  ports : float prop list;  (** ports *)
}
[@@deriving yojson_of]

type gclb_targets = {
  ip_configs : gclb_targets__ip_configs list;  (** ip_configs *)
  target_https_proxy : string prop;  (** target_https_proxy *)
  target_ssl_proxy : string prop;  (** target_ssl_proxy *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate_map = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of labels associated with a Certificate Map resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** A user-defined name of the Certificate Map. Certificate Map names must be unique
globally and match the pattern 'projects/*/locations/*/certificateMaps/*'. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_certificate_map ?description ?id
    ?labels ?project ?timeouts ~name () :
    google_certificate_manager_certificate_map =
  { description; id; labels; name; project; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  gclb_targets : gclb_targets list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~name __id =
  let __type = "google_certificate_manager_certificate_map" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gclb_targets = Prop.computed __type __id "gclb_targets";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_certificate_manager_certificate_map
        (google_certificate_manager_certificate_map ?description ?id
           ?labels ?project ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
