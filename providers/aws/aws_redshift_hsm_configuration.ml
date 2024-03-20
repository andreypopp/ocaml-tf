(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_hsm_configuration = {
  description : string prop;
  hsm_configuration_identifier : string prop;
  hsm_ip_address : string prop;
  hsm_partition_name : string prop;
  hsm_partition_password : string prop;
  hsm_server_public_certificate : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_hsm_configuration) -> ()

let yojson_of_aws_redshift_hsm_configuration =
  (function
   | {
       description = v_description;
       hsm_configuration_identifier = v_hsm_configuration_identifier;
       hsm_ip_address = v_hsm_ip_address;
       hsm_partition_name = v_hsm_partition_name;
       hsm_partition_password = v_hsm_partition_password;
       hsm_server_public_certificate =
         v_hsm_server_public_certificate;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_hsm_server_public_certificate
         in
         ("hsm_server_public_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hsm_partition_password
         in
         ("hsm_partition_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hsm_partition_name
         in
         ("hsm_partition_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hsm_ip_address
         in
         ("hsm_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_hsm_configuration_identifier
         in
         ("hsm_configuration_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_hsm_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_hsm_configuration

[@@@deriving.end]

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
