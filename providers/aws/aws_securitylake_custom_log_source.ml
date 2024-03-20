(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__crawler_configuration = {
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__crawler_configuration) -> ()

let yojson_of_configuration__crawler_configuration =
  (function
   | { role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : configuration__crawler_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__crawler_configuration

[@@@deriving.end]

type configuration__provider_identity = {
  external_id : string prop;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__provider_identity) -> ()

let yojson_of_configuration__provider_identity =
  (function
   | { external_id = v_external_id; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_id in
         ("external_id", arg) :: bnds
       in
       `Assoc bnds
    : configuration__provider_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__provider_identity

[@@@deriving.end]

type configuration = {
  crawler_configuration : configuration__crawler_configuration list;
  provider_identity : configuration__provider_identity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       crawler_configuration = v_crawler_configuration;
       provider_identity = v_provider_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__provider_identity
             v_provider_identity
         in
         ("provider_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__crawler_configuration
             v_crawler_configuration
         in
         ("crawler_configuration", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type attributes = {
  crawler_arn : string prop;
  database_arn : string prop;
  table_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes) -> ()

let yojson_of_attributes =
  (function
   | {
       crawler_arn = v_crawler_arn;
       database_arn = v_database_arn;
       table_arn = v_table_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_arn in
         ("table_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_arn in
         ("database_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_crawler_arn in
         ("crawler_arn", arg) :: bnds
       in
       `Assoc bnds
    : attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes

[@@@deriving.end]

type provider_details = {
  location : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : provider_details) -> ()

let yojson_of_provider_details =
  (function
   | { location = v_location; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : provider_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_provider_details

[@@@deriving.end]

type aws_securitylake_custom_log_source = {
  event_classes : string prop list option; [@option]
  source_name : string prop;
  source_version : string prop option; [@option]
  configuration : configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securitylake_custom_log_source) -> ()

let yojson_of_aws_securitylake_custom_log_source =
  (function
   | {
       event_classes = v_event_classes;
       source_name = v_source_name;
       source_version = v_source_version;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
       in
       let bnds =
         match v_source_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_name in
         ("source_name", arg) :: bnds
       in
       let bnds =
         match v_event_classes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_classes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_securitylake_custom_log_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securitylake_custom_log_source

[@@@deriving.end]

let configuration__crawler_configuration ~role_arn () :
    configuration__crawler_configuration =
  { role_arn }

let configuration__provider_identity ~external_id ~principal () :
    configuration__provider_identity =
  { external_id; principal }

let configuration ~crawler_configuration ~provider_identity () :
    configuration =
  { crawler_configuration; provider_identity }

let aws_securitylake_custom_log_source ?event_classes ?source_version
    ~source_name ~configuration () :
    aws_securitylake_custom_log_source =
  { event_classes; source_name; source_version; configuration }

type t = {
  attributes : attributes list prop;
  event_classes : string list prop;
  id : string prop;
  provider_details : provider_details list prop;
  source_name : string prop;
  source_version : string prop;
}

let make ?event_classes ?source_version ~source_name ~configuration
    __id =
  let __type = "aws_securitylake_custom_log_source" in
  let __attrs =
    ({
       attributes = Prop.computed __type __id "attributes";
       event_classes = Prop.computed __type __id "event_classes";
       id = Prop.computed __type __id "id";
       provider_details =
         Prop.computed __type __id "provider_details";
       source_name = Prop.computed __type __id "source_name";
       source_version = Prop.computed __type __id "source_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_custom_log_source
        (aws_securitylake_custom_log_source ?event_classes
           ?source_version ~source_name ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?event_classes ?source_version ~source_name
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?event_classes ?source_version ~source_name ~configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
