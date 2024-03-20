(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;  (** The name of the ConfigMap. *)
  namespace : string prop option; [@option]
      (** The namespace of the ConfigMap. *)
}
[@@deriving yojson_of]
(** metadata *)

type kubernetes_config_map_v1_data = {
  data : (string * string prop) list;
      (** The data we want to add to the ConfigMap. *)
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool prop option; [@option]
      (** Force overwriting data that is managed outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_config_map_v1_data *)

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_config_map_v1_data ?field_manager ?force ?id ~data
    ~metadata () : kubernetes_config_map_v1_data =
  { data; field_manager; force; id; metadata }

type t = {
  data : (string * string) list prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

let make ?field_manager ?force ?id ~data ~metadata __id =
  let __type = "kubernetes_config_map_v1_data" in
  let __attrs =
    ({
       data = Prop.computed __type __id "data";
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_config_map_v1_data
        (kubernetes_config_map_v1_data ?field_manager ?force ?id
           ~data ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?field_manager ?force ?id ~data ~metadata
    __id =
  let (r : _ Tf_core.resource) =
    make ?field_manager ?force ?id ~data ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
