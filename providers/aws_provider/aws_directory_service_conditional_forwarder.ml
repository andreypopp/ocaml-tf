(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_directory_service_conditional_forwarder = {
  directory_id : string;  (** directory_id *)
  dns_ips : string list;  (** dns_ips *)
  remote_domain_name : string;  (** remote_domain_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_conditional_forwarder *)

let aws_directory_service_conditional_forwarder ~directory_id
    ~dns_ips ~remote_domain_name __resource_id =
  let __resource_type =
    "aws_directory_service_conditional_forwarder"
  in
  let __resource = { directory_id; dns_ips; remote_domain_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_conditional_forwarder __resource);
  ()