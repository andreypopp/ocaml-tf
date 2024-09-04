(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source__aws_log_source_resource = {
  source_name : string prop;
  source_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__aws_log_source_resource) -> ()

let yojson_of_source__aws_log_source_resource =
  (function
   | {
       source_name = v_source_name;
       source_version = v_source_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : source__aws_log_source_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__aws_log_source_resource

[@@@deriving.end]

type source__custom_log_source_resource__attributes = {
  crawler_arn : string prop;
  database_arn : string prop;
  table_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source__custom_log_source_resource__attributes) -> ()

let yojson_of_source__custom_log_source_resource__attributes =
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
    : source__custom_log_source_resource__attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__custom_log_source_resource__attributes

[@@@deriving.end]

type source__custom_log_source_resource__provider = {
  location : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__custom_log_source_resource__provider) -> ()

let yojson_of_source__custom_log_source_resource__provider =
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
    : source__custom_log_source_resource__provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__custom_log_source_resource__provider

[@@@deriving.end]

type source__custom_log_source_resource = {
  source_name : string prop;
  source_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__custom_log_source_resource) -> ()

let yojson_of_source__custom_log_source_resource =
  (function
   | {
       source_name = v_source_name;
       source_version = v_source_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : source__custom_log_source_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__custom_log_source_resource

[@@@deriving.end]

type source = {
  aws_log_source_resource : source__aws_log_source_resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_log_source_resource :
    source__custom_log_source_resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       aws_log_source_resource = v_aws_log_source_resource;
       custom_log_source_resource = v_custom_log_source_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_log_source_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source__custom_log_source_resource)
               v_custom_log_source_resource
           in
           let bnd = "custom_log_source_resource", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_log_source_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source__aws_log_source_resource)
               v_aws_log_source_resource
           in
           let bnd = "aws_log_source_resource", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type subscriber_identity = {
  external_id : string prop;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscriber_identity) -> ()

let yojson_of_subscriber_identity =
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
    : subscriber_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscriber_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_securitylake_subscriber = {
  access_type : string prop option; [@option]
  subscriber_description : string prop option; [@option]
  subscriber_name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscriber_identity : subscriber_identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securitylake_subscriber) -> ()

let yojson_of_aws_securitylake_subscriber =
  (function
   | {
       access_type = v_access_type;
       subscriber_description = v_subscriber_description;
       subscriber_name = v_subscriber_name;
       tags = v_tags;
       source = v_source;
       subscriber_identity = v_subscriber_identity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscriber_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subscriber_identity)
               v_subscriber_identity
           in
           let bnd = "subscriber_identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscriber_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscriber_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscriber_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscriber_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_securitylake_subscriber ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securitylake_subscriber

[@@@deriving.end]

let source__aws_log_source_resource ?source_version ~source_name () :
    source__aws_log_source_resource =
  { source_name; source_version }

let source__custom_log_source_resource ?source_version ~source_name
    () : source__custom_log_source_resource =
  { source_name; source_version }

let source ?(aws_log_source_resource = [])
    ?(custom_log_source_resource = []) () : source =
  { aws_log_source_resource; custom_log_source_resource }

let subscriber_identity ~external_id ~principal () :
    subscriber_identity =
  { external_id; principal }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securitylake_subscriber ?access_type ?subscriber_description
    ?subscriber_name ?tags ?(subscriber_identity = []) ?timeouts
    ~source () : aws_securitylake_subscriber =
  {
    access_type;
    subscriber_description;
    subscriber_name;
    tags;
    source;
    subscriber_identity;
    timeouts;
  }

type t = {
  tf_name : string;
  access_type : string prop;
  arn : string prop;
  id : string prop;
  resource_share_arn : string prop;
  resource_share_name : string prop;
  role_arn : string prop;
  s3_bucket_arn : string prop;
  subscriber_description : string prop;
  subscriber_endpoint : string prop;
  subscriber_name : string prop;
  subscriber_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?access_type ?subscriber_description ?subscriber_name ?tags
    ?(subscriber_identity = []) ?timeouts ~source __id =
  let __type = "aws_securitylake_subscriber" in
  let __attrs =
    ({
       tf_name = __id;
       access_type = Prop.computed __type __id "access_type";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
       resource_share_name =
         Prop.computed __type __id "resource_share_name";
       role_arn = Prop.computed __type __id "role_arn";
       s3_bucket_arn = Prop.computed __type __id "s3_bucket_arn";
       subscriber_description =
         Prop.computed __type __id "subscriber_description";
       subscriber_endpoint =
         Prop.computed __type __id "subscriber_endpoint";
       subscriber_name = Prop.computed __type __id "subscriber_name";
       subscriber_status =
         Prop.computed __type __id "subscriber_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_subscriber
        (aws_securitylake_subscriber ?access_type
           ?subscriber_description ?subscriber_name ?tags
           ~subscriber_identity ?timeouts ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?access_type ?subscriber_description
    ?subscriber_name ?tags ?(subscriber_identity = []) ?timeouts
    ~source __id =
  let (r : _ Tf_core.resource) =
    make ?access_type ?subscriber_description ?subscriber_name ?tags
      ~subscriber_identity ?timeouts ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
