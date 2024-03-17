(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_hsm_configuration = {
  description : string prop;  (** description *)
  hsm_configuration_identifier : string prop;
      (** hsm_configuration_identifier *)
  hsm_ip_address : string prop;  (** hsm_ip_address *)
  hsm_partition_name : string prop;  (** hsm_partition_name *)
  hsm_partition_password : string prop;
      (** hsm_partition_password *)
  hsm_server_public_certificate : string prop;
      (** hsm_server_public_certificate *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_configuration *)

let aws_redshift_hsm_configuration ?id ?tags ?tags_all ~description
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
      id;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_configuration __resource);
  ()
