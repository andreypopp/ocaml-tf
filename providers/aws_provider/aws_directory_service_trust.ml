(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_trust = {
  conditional_forwarder_ip_addrs : string prop list option; [@option]
      (** conditional_forwarder_ip_addrs *)
  delete_associated_conditional_forwarder : bool prop option;
      [@option]
      (** delete_associated_conditional_forwarder *)
  directory_id : string prop;  (** directory_id *)
  remote_domain_name : string prop;  (** remote_domain_name *)
  selective_auth : string prop option; [@option]
      (** selective_auth *)
  trust_direction : string prop;  (** trust_direction *)
  trust_password : string prop;  (** trust_password *)
  trust_type : string prop option; [@option]  (** trust_type *)
}
[@@deriving yojson_of]
(** aws_directory_service_trust *)

let aws_directory_service_trust ?conditional_forwarder_ip_addrs
    ?delete_associated_conditional_forwarder ?selective_auth
    ?trust_type ~directory_id ~remote_domain_name ~trust_direction
    ~trust_password __resource_id =
  let __resource_type = "aws_directory_service_trust" in
  let __resource =
    {
      conditional_forwarder_ip_addrs;
      delete_associated_conditional_forwarder;
      directory_id;
      remote_domain_name;
      selective_auth;
      trust_direction;
      trust_password;
      trust_type;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_trust __resource);
  ()
