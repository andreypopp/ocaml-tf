(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_tag_option_resource_association = {
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  tag_option_id : string prop;  (** tag_option_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_tag_option_resource_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_servicecatalog_tag_option_resource_association ?id ?timeouts
    ~resource_id ~tag_option_id () :
    aws_servicecatalog_tag_option_resource_association =
  { id; resource_id; tag_option_id; timeouts }

type t = {
  id : string prop;
  resource_arn : string prop;
  resource_created_time : string prop;
  resource_description : string prop;
  resource_id : string prop;
  resource_name : string prop;
  tag_option_id : string prop;
}

let make ?id ?timeouts ~resource_id ~tag_option_id __id =
  let __type =
    "aws_servicecatalog_tag_option_resource_association"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_created_time =
         Prop.computed __type __id "resource_created_time";
       resource_description =
         Prop.computed __type __id "resource_description";
       resource_id = Prop.computed __type __id "resource_id";
       resource_name = Prop.computed __type __id "resource_name";
       tag_option_id = Prop.computed __type __id "tag_option_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_tag_option_resource_association
        (aws_servicecatalog_tag_option_resource_association ?id
           ?timeouts ~resource_id ~tag_option_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~resource_id ~tag_option_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~resource_id ~tag_option_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
