(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_account_credentials = {
  account_name : string prop;
  account_password : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_account_credentials) -> ()

let yojson_of_service_account_credentials =
  (function
   | {
       account_name = v_account_name;
       account_password = v_account_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_account_password
         in
         ("account_password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : service_account_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_account_credentials

[@@@deriving.end]

type aws_appstream_directory_config = {
  directory_name : string prop;
  id : string prop option; [@option]
  organizational_unit_distinguished_names : string prop list;
  service_account_credentials : service_account_credentials list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_directory_config) -> ()

let yojson_of_aws_appstream_directory_config =
  (function
   | {
       directory_name = v_directory_name;
       id = v_id;
       organizational_unit_distinguished_names =
         v_organizational_unit_distinguished_names;
       service_account_credentials = v_service_account_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_account_credentials
             v_service_account_credentials
         in
         ("service_account_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_organizational_unit_distinguished_names
         in
         ("organizational_unit_distinguished_names", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_directory_name
         in
         ("directory_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_appstream_directory_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_directory_config

[@@@deriving.end]

let service_account_credentials ~account_name ~account_password () :
    service_account_credentials =
  { account_name; account_password }

let aws_appstream_directory_config ?id ~directory_name
    ~organizational_unit_distinguished_names
    ~service_account_credentials () : aws_appstream_directory_config
    =
  {
    directory_name;
    id;
    organizational_unit_distinguished_names;
    service_account_credentials;
  }

type t = {
  tf_name : string;
  created_time : string prop;
  directory_name : string prop;
  id : string prop;
  organizational_unit_distinguished_names : string list prop;
}

let make ?id ~directory_name ~organizational_unit_distinguished_names
    ~service_account_credentials __id =
  let __type = "aws_appstream_directory_config" in
  let __attrs =
    ({
       tf_name = __id;
       created_time = Prop.computed __type __id "created_time";
       directory_name = Prop.computed __type __id "directory_name";
       id = Prop.computed __type __id "id";
       organizational_unit_distinguished_names =
         Prop.computed __type __id
           "organizational_unit_distinguished_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_directory_config
        (aws_appstream_directory_config ?id ~directory_name
           ~organizational_unit_distinguished_names
           ~service_account_credentials ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~directory_name
    ~organizational_unit_distinguished_names
    ~service_account_credentials __id =
  let (r : _ Tf_core.resource) =
    make ?id ~directory_name ~organizational_unit_distinguished_names
      ~service_account_credentials __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
