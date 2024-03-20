(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_configuration = {
  state_machine_version_arn : string prop;
      (** state_machine_version_arn *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** routing_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_sfn_alias = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_configuration : routing_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_sfn_alias *)

let routing_configuration ~state_machine_version_arn ~weight () :
    routing_configuration =
  { state_machine_version_arn; weight }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_sfn_alias ?description ?id ?timeouts ~name
    ~routing_configuration () : aws_sfn_alias =
  { description; id; name; routing_configuration; timeouts }

type t = {
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ?timeouts ~name ~routing_configuration __id
    =
  let __type = "aws_sfn_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_alias
        (aws_sfn_alias ?description ?id ?timeouts ~name
           ~routing_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~routing_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~routing_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
