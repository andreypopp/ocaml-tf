(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~resource_id ~tag_option_id
    __resource_id =
  let __resource_type =
    "aws_servicecatalog_tag_option_resource_association"
  in
  let __resource =
    aws_servicecatalog_tag_option_resource_association ?id ?timeouts
      ~resource_id ~tag_option_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_tag_option_resource_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       resource_created_time =
         Prop.computed __resource_type __resource_id
           "resource_created_time";
       resource_description =
         Prop.computed __resource_type __resource_id
           "resource_description";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       resource_name =
         Prop.computed __resource_type __resource_id "resource_name";
       tag_option_id =
         Prop.computed __resource_type __resource_id "tag_option_id";
     }
      : t)
  in
  __resource_attributes
