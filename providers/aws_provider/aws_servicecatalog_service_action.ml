(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_service_action__definition = {
  assume_role : string prop option; [@option]  (** assume_role *)
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action__definition *)

type aws_servicecatalog_service_action__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action__timeouts *)

type aws_servicecatalog_service_action = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  definition : aws_servicecatalog_service_action__definition list;
  timeouts : aws_servicecatalog_service_action__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action *)

type t = {
  accept_language : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let aws_servicecatalog_service_action ?accept_language ?description
    ?id ?timeouts ~name ~definition __resource_id =
  let __resource_type = "aws_servicecatalog_service_action" in
  let __resource =
    ({ accept_language; description; id; name; definition; timeouts }
      : aws_servicecatalog_service_action)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_service_action __resource);
  let __resource_attributes =
    ({
       accept_language =
         Prop.computed __resource_type __resource_id
           "accept_language";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
