(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_studio = {
  auth_mode : string;  (** auth_mode *)
  default_s3_location : string;  (** default_s3_location *)
  description : string option; [@option]  (** description *)
  engine_security_group_id : string;  (** engine_security_group_id *)
  idp_auth_url : string option; [@option]  (** idp_auth_url *)
  idp_relay_state_parameter_name : string option; [@option]
      (** idp_relay_state_parameter_name *)
  name : string;  (** name *)
  service_role : string;  (** service_role *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_role : string option; [@option]  (** user_role *)
  vpc_id : string;  (** vpc_id *)
  workspace_security_group_id : string;
      (** workspace_security_group_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio *)

let aws_emr_studio ?description ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?user_role ~auth_mode
    ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
    __resource_id =
  let __resource_type = "aws_emr_studio" in
  let __resource =
    {
      auth_mode;
      default_s3_location;
      description;
      engine_security_group_id;
      idp_auth_url;
      idp_relay_state_parameter_name;
      name;
      service_role;
      subnet_ids;
      tags;
      user_role;
      vpc_id;
      workspace_security_group_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_studio __resource);
  ()
