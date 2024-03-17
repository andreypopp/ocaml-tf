(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_studio = {
  auth_mode : string prop;  (** auth_mode *)
  default_s3_location : string prop;  (** default_s3_location *)
  description : string prop option; [@option]  (** description *)
  engine_security_group_id : string prop;
      (** engine_security_group_id *)
  id : string prop option; [@option]  (** id *)
  idp_auth_url : string prop option; [@option]  (** idp_auth_url *)
  idp_relay_state_parameter_name : string prop option; [@option]
      (** idp_relay_state_parameter_name *)
  name : string prop;  (** name *)
  service_role : string prop;  (** service_role *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_role : string prop option; [@option]  (** user_role *)
  vpc_id : string prop;  (** vpc_id *)
  workspace_security_group_id : string prop;
      (** workspace_security_group_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio *)

let aws_emr_studio ?description ?id ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
    ~auth_mode ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
    __resource_id =
  let __resource_type = "aws_emr_studio" in
  let __resource =
    {
      auth_mode;
      default_s3_location;
      description;
      engine_security_group_id;
      id;
      idp_auth_url;
      idp_relay_state_parameter_name;
      name;
      service_role;
      subnet_ids;
      tags;
      tags_all;
      user_role;
      vpc_id;
      workspace_security_group_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_studio __resource);
  ()
