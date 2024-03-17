(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_hsm_configuration = {
  description : string;  (** description *)
  hsm_configuration_identifier : string;
      (** hsm_configuration_identifier *)
  hsm_ip_address : string;  (** hsm_ip_address *)
  hsm_partition_name : string;  (** hsm_partition_name *)
  hsm_partition_password : string;  (** hsm_partition_password *)
  hsm_server_public_certificate : string;
      (** hsm_server_public_certificate *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_configuration *)

let aws_redshift_hsm_configuration ?tags ~description
    ~hsm_configuration_identifier ~hsm_ip_address ~hsm_partition_name
    ~hsm_partition_password ~hsm_server_public_certificate
    __resource_id =
  let __resource_type = "aws_redshift_hsm_configuration" in
  let __resource =
    {
      description;
      hsm_configuration_identifier;
      hsm_ip_address;
      hsm_partition_name;
      hsm_partition_password;
      hsm_server_public_certificate;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_configuration __resource);
  ()
