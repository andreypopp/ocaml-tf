(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_conditional_forwarder = {
  directory_id : string prop;  (** directory_id *)
  dns_ips : string prop list;  (** dns_ips *)
  id : string prop option; [@option]  (** id *)
  remote_domain_name : string prop;  (** remote_domain_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_conditional_forwarder *)

let aws_directory_service_conditional_forwarder ?id ~directory_id
    ~dns_ips ~remote_domain_name __resource_id =
  let __resource_type =
    "aws_directory_service_conditional_forwarder"
  in
  let __resource =
    { directory_id; dns_ips; id; remote_domain_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_conditional_forwarder __resource);
  ()
