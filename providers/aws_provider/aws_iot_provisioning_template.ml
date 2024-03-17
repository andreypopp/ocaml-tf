(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_provisioning_template__pre_provisioning_hook = {
  payload_version : string option; [@option]  (** payload_version *)
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template__pre_provisioning_hook *)

type aws_iot_provisioning_template = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  provisioning_role_arn : string;  (** provisioning_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_body : string;  (** template_body *)
  pre_provisioning_hook :
    aws_iot_provisioning_template__pre_provisioning_hook list;
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template *)

let aws_iot_provisioning_template ?description ?enabled ?tags ~name
    ~provisioning_role_arn ~template_body ~pre_provisioning_hook
    __resource_id =
  let __resource_type = "aws_iot_provisioning_template" in
  let __resource =
    {
      description;
      enabled;
      name;
      provisioning_role_arn;
      tags;
      template_body;
      pre_provisioning_hook;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_provisioning_template __resource);
  ()
