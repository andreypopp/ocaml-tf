(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_environment__monitor = {
  alarm_arn : string prop;  (** alarm_arn *)
  alarm_role_arn : string prop option; [@option]
      (** alarm_role_arn *)
}
[@@deriving yojson_of]
(** aws_appconfig_environment__monitor *)

type aws_appconfig_environment = {
  application_id : string prop;  (** application_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  monitor : aws_appconfig_environment__monitor list;
}
[@@deriving yojson_of]
(** aws_appconfig_environment *)

type t = {
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_appconfig_environment ?description ?tags ~application_id
    ~name ~monitor __resource_id =
  let __resource_type = "aws_appconfig_environment" in
  let __resource =
    ({ application_id; description; name; tags; monitor }
      : aws_appconfig_environment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_environment __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
