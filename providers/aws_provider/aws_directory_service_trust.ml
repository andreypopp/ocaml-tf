(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_trust = {
  conditional_forwarder_ip_addrs : string list option; [@option]
      (** conditional_forwarder_ip_addrs *)
  directory_id : string;  (** directory_id *)
  remote_domain_name : string;  (** remote_domain_name *)
  trust_direction : string;  (** trust_direction *)
  trust_password : string;  (** trust_password *)
}
[@@deriving yojson_of]
(** aws_directory_service_trust *)

let aws_directory_service_trust ?conditional_forwarder_ip_addrs
    ~directory_id ~remote_domain_name ~trust_direction
    ~trust_password __resource_id =
  let __resource_type = "aws_directory_service_trust" in
  let __resource =
    {
      conditional_forwarder_ip_addrs;
      directory_id;
      remote_domain_name;
      trust_direction;
      trust_password;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_trust __resource);
  ()
