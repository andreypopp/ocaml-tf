(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_provisioning_template__pre_provisioning_hook = {
  payload_version : string prop option; [@option]
      (** payload_version *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template__pre_provisioning_hook *)

type aws_iot_provisioning_template = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provisioning_role_arn : string prop;  (** provisioning_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  template_body : string prop;  (** template_body *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  pre_provisioning_hook :
    aws_iot_provisioning_template__pre_provisioning_hook list;
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template *)

type t = {
  arn : string prop;
  default_version_id : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  provisioning_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  type_ : string prop;
}

let aws_iot_provisioning_template ?description ?enabled ?id ?tags
    ?tags_all ?type_ ~name ~provisioning_role_arn ~template_body
    ~pre_provisioning_hook __resource_id =
  let __resource_type = "aws_iot_provisioning_template" in
  let __resource =
    ({
       description;
       enabled;
       id;
       name;
       provisioning_role_arn;
       tags;
       tags_all;
       template_body;
       type_;
       pre_provisioning_hook;
     }
      : aws_iot_provisioning_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_provisioning_template __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_version_id =
         Prop.computed __resource_type __resource_id
           "default_version_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       provisioning_role_arn =
         Prop.computed __resource_type __resource_id
           "provisioning_role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       template_body =
         Prop.computed __resource_type __resource_id "template_body";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
