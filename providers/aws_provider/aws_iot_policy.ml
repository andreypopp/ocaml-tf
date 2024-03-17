(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_policy__timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_iot_policy__timeouts *)

type aws_iot_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_iot_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_iot_policy *)

type t = {
  arn : string prop;
  default_version_id : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy
    __resource_id =
  let __resource_type = "aws_iot_policy" in
  let __resource =
    ({ id; name; policy; tags; tags_all; timeouts } : aws_iot_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_version_id =
         Prop.computed __resource_type __resource_id
           "default_version_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy = Prop.computed __resource_type __resource_id "policy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
