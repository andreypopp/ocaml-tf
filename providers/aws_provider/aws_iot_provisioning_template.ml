(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_provisioning_template__pre_provisioning_hook = {
  payload_version : string option; [@option]  (** payload_version *)
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template__pre_provisioning_hook *)

type aws_iot_provisioning_template = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  provisioning_role_arn : string;  (** provisioning_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  template_body : string;  (** template_body *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  pre_provisioning_hook :
    aws_iot_provisioning_template__pre_provisioning_hook list;
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template *)

let aws_iot_provisioning_template ?description ?enabled ?id ?tags
    ?tags_all ?type_ ~name ~provisioning_role_arn ~template_body
    ~pre_provisioning_hook __resource_id =
  let __resource_type = "aws_iot_provisioning_template" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_provisioning_template __resource);
  ()
