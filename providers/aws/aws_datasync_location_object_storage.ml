(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_object_storage = {
  access_key : string prop option; [@option]
  agent_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bucket_name : string prop;
  id : string prop option; [@option]
  secret_key : string prop option; [@option]
  server_certificate : string prop option; [@option]
  server_hostname : string prop;
  server_port : float prop option; [@option]
  server_protocol : string prop option; [@option]
  subdirectory : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_object_storage) -> ()

let yojson_of_aws_datasync_location_object_storage =
  (function
   | {
       access_key = v_access_key;
       agent_arns = v_agent_arns;
       bucket_name = v_bucket_name;
       id = v_id;
       secret_key = v_secret_key;
       server_certificate = v_server_certificate;
       server_hostname = v_server_hostname;
       server_port = v_server_port;
       server_protocol = v_server_protocol;
       subdirectory = v_subdirectory;
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
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_hostname
         in
         ("server_hostname", arg) :: bnds
       in
       let bnds =
         match v_server_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_key", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
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
         match v_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_object_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_object_storage

[@@@deriving.end]

let aws_datasync_location_object_storage ?access_key ?id ?secret_key
    ?server_certificate ?server_port ?server_protocol ?subdirectory
    ?tags ?tags_all ~agent_arns ~bucket_name ~server_hostname () :
    aws_datasync_location_object_storage =
  {
    access_key;
    agent_arns;
    bucket_name;
    id;
    secret_key;
    server_certificate;
    server_hostname;
    server_port;
    server_protocol;
    subdirectory;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  access_key : string prop;
  agent_arns : string list prop;
  arn : string prop;
  bucket_name : string prop;
  id : string prop;
  secret_key : string prop;
  server_certificate : string prop;
  server_hostname : string prop;
  server_port : float prop;
  server_protocol : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?access_key ?id ?secret_key ?server_certificate ?server_port
    ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
    ~bucket_name ~server_hostname __id =
  let __type = "aws_datasync_location_object_storage" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       secret_key = Prop.computed __type __id "secret_key";
       server_certificate =
         Prop.computed __type __id "server_certificate";
       server_hostname = Prop.computed __type __id "server_hostname";
       server_port = Prop.computed __type __id "server_port";
       server_protocol = Prop.computed __type __id "server_protocol";
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
      yojson_of_aws_datasync_location_object_storage
        (aws_datasync_location_object_storage ?access_key ?id
           ?secret_key ?server_certificate ?server_port
           ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
           ~bucket_name ~server_hostname ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key ?id ?secret_key
    ?server_certificate ?server_port ?server_protocol ?subdirectory
    ?tags ?tags_all ~agent_arns ~bucket_name ~server_hostname __id =
  let (r : _ Tf_core.resource) =
    make ?access_key ?id ?secret_key ?server_certificate ?server_port
      ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
      ~bucket_name ~server_hostname __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
