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
    ~hsm_partition_password ~hsm_server_public_certificate () :
    aws_redshift_hsm_configuration =
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

type t = {
  arn : string prop;
  description : string prop;
  hsm_configuration_identifier : string prop;
  hsm_ip_address : string prop;
  hsm_partition_name : string prop;
  hsm_partition_password : string prop;
  hsm_server_public_certificate : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~description
    ~hsm_configuration_identifier ~hsm_ip_address ~hsm_partition_name
    ~hsm_partition_password ~hsm_server_public_certificate
    __resource_id =
  let __resource_type = "aws_redshift_hsm_configuration" in
  let __resource =
    aws_redshift_hsm_configuration ?id ?tags ?tags_all ~description
      ~hsm_configuration_identifier ~hsm_ip_address
      ~hsm_partition_name ~hsm_partition_password
      ~hsm_server_public_certificate ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       hsm_configuration_identifier =
         Prop.computed __resource_type __resource_id
           "hsm_configuration_identifier";
       hsm_ip_address =
         Prop.computed __resource_type __resource_id "hsm_ip_address";
       hsm_partition_name =
         Prop.computed __resource_type __resource_id
           "hsm_partition_name";
       hsm_partition_password =
         Prop.computed __resource_type __resource_id
           "hsm_partition_password";
       hsm_server_public_certificate =
         Prop.computed __resource_type __resource_id
           "hsm_server_public_certificate";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
