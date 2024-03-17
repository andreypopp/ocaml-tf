(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_role_alias = {
  alias : string prop;  (** alias *)
  credential_duration : float prop option; [@option]
      (** credential_duration *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iot_role_alias *)

type t = {
  alias : string prop;
  arn : string prop;
  credential_duration : float prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_iot_role_alias ?credential_duration ?id ?tags ?tags_all
    ~alias ~role_arn __resource_id =
  let __resource_type = "aws_iot_role_alias" in
  let __resource =
    ({ alias; credential_duration; id; role_arn; tags; tags_all }
      : aws_iot_role_alias)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_role_alias __resource);
  let __resource_attributes =
    ({
       alias = Prop.computed __resource_type __resource_id "alias";
       arn = Prop.computed __resource_type __resource_id "arn";
       credential_duration =
         Prop.computed __resource_type __resource_id
           "credential_duration";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
