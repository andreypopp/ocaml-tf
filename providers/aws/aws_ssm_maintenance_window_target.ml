(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** targets *)

type aws_ssm_maintenance_window_target = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  owner_information : string prop option; [@option]
      (** owner_information *)
  resource_type : string prop;  (** resource_type *)
  window_id : string prop;  (** window_id *)
  targets : targets list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_target *)

let targets ~key ~values () : targets = { key; values }

let aws_ssm_maintenance_window_target ?description ?id ?name
    ?owner_information ~resource_type ~window_id ~targets () :
    aws_ssm_maintenance_window_target =
  {
    description;
    id;
    name;
    owner_information;
    resource_type;
    window_id;
    targets;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  owner_information : string prop;
  resource_type : string prop;
  window_id : string prop;
}

let make ?description ?id ?name ?owner_information ~resource_type
    ~window_id ~targets __id =
  let __type = "aws_ssm_maintenance_window_target" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_information =
         Prop.computed __type __id "owner_information";
       resource_type = Prop.computed __type __id "resource_type";
       window_id = Prop.computed __type __id "window_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_maintenance_window_target
        (aws_ssm_maintenance_window_target ?description ?id ?name
           ?owner_information ~resource_type ~window_id ~targets ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?owner_information
    ~resource_type ~window_id ~targets __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?owner_information ~resource_type
      ~window_id ~targets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
