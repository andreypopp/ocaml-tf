(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sas_configuration = { token : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sas_configuration) -> ()

let yojson_of_sas_configuration =
  (function
   | { token = v_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       `Assoc bnds
    : sas_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sas_configuration

[@@@deriving.end]

type aws_datasync_location_azure_blob = {
  access_tier : string prop option; [@option]
  agent_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  authentication_type : string prop;
  blob_type : string prop option; [@option]
  container_url : string prop;
  id : string prop option; [@option]
  subdirectory : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  sas_configuration : sas_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_azure_blob) -> ()

let yojson_of_aws_datasync_location_azure_blob =
  (function
   | {
       access_tier = v_access_tier;
       agent_arns = v_agent_arns;
       authentication_type = v_authentication_type;
       blob_type = v_blob_type;
       container_url = v_container_url;
       id = v_id;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       sas_configuration = v_sas_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sas_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sas_configuration)
               v_sas_configuration
           in
           let bnd = "sas_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
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
         let arg = yojson_of_prop yojson_of_string v_container_url in
         ("container_url", arg) :: bnds
       in
       let bnds =
         match v_blob_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_agent_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_agent_arns
           in
           let bnd = "agent_arns", arg in
           bnd :: bnds
       in
       let bnds =
         match v_access_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_tier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_azure_blob ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_azure_blob

[@@@deriving.end]

let sas_configuration ~token () : sas_configuration = { token }

let aws_datasync_location_azure_blob ?access_tier ?blob_type ?id
    ?subdirectory ?tags ?tags_all ?(sas_configuration = [])
    ~agent_arns ~authentication_type ~container_url () :
    aws_datasync_location_azure_blob =
  {
    access_tier;
    agent_arns;
    authentication_type;
    blob_type;
    container_url;
    id;
    subdirectory;
    tags;
    tags_all;
    sas_configuration;
  }

type t = {
  tf_name : string;
  access_tier : string prop;
  agent_arns : string list prop;
  arn : string prop;
  authentication_type : string prop;
  blob_type : string prop;
  container_url : string prop;
  id : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

let make ?access_tier ?blob_type ?id ?subdirectory ?tags ?tags_all
    ?(sas_configuration = []) ~agent_arns ~authentication_type
    ~container_url __id =
  let __type = "aws_datasync_location_azure_blob" in
  let __attrs =
    ({
       tf_name = __id;
       access_tier = Prop.computed __type __id "access_tier";
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       blob_type = Prop.computed __type __id "blob_type";
       container_url = Prop.computed __type __id "container_url";
       id = Prop.computed __type __id "id";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_azure_blob
        (aws_datasync_location_azure_blob ?access_tier ?blob_type ?id
           ?subdirectory ?tags ?tags_all ~sas_configuration
           ~agent_arns ~authentication_type ~container_url ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?blob_type ?id ?subdirectory
    ?tags ?tags_all ?(sas_configuration = []) ~agent_arns
    ~authentication_type ~container_url __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?blob_type ?id ?subdirectory ?tags ?tags_all
      ~sas_configuration ~agent_arns ~authentication_type
      ~container_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
