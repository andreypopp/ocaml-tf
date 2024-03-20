(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?tags_all ~description
    ~hsm_configuration_identifier ~hsm_ip_address ~hsm_partition_name
    ~hsm_partition_password ~hsm_server_public_certificate __id =
  let __type = "aws_redshift_hsm_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hsm_configuration_identifier =
         Prop.computed __type __id "hsm_configuration_identifier";
       hsm_ip_address = Prop.computed __type __id "hsm_ip_address";
       hsm_partition_name =
         Prop.computed __type __id "hsm_partition_name";
       hsm_partition_password =
         Prop.computed __type __id "hsm_partition_password";
       hsm_server_public_certificate =
         Prop.computed __type __id "hsm_server_public_certificate";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_hsm_configuration
        (aws_redshift_hsm_configuration ?id ?tags ?tags_all
           ~description ~hsm_configuration_identifier ~hsm_ip_address
           ~hsm_partition_name ~hsm_partition_password
           ~hsm_server_public_certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~description
    ~hsm_configuration_identifier ~hsm_ip_address ~hsm_partition_name
    ~hsm_partition_password ~hsm_server_public_certificate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~description
      ~hsm_configuration_identifier ~hsm_ip_address
      ~hsm_partition_name ~hsm_partition_password
      ~hsm_server_public_certificate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
