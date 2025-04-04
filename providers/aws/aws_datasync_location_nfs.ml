(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type mount_options = { version : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : mount_options) -> ()

let yojson_of_mount_options =
  (function
   | { version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mount_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount_options

[@@@deriving.end]

type on_prem_config = {
  agent_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_prem_config) -> ()

let yojson_of_on_prem_config =
  (function
   | { agent_arns = v_agent_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : on_prem_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_prem_config

[@@@deriving.end]

type aws_datasync_location_nfs = {
  id : string prop option; [@option]
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  mount_options : mount_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_prem_config : on_prem_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_nfs) -> ()

let yojson_of_aws_datasync_location_nfs =
  (function
   | {
       id = v_id;
       server_hostname = v_server_hostname;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       mount_options = v_mount_options;
       on_prem_config = v_on_prem_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_on_prem_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_on_prem_config)
               v_on_prem_config
           in
           let bnd = "on_prem_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mount_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mount_options) v_mount_options
           in
           let bnd = "mount_options", arg in
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
         let arg = yojson_of_prop yojson_of_string v_subdirectory in
         ("subdirectory", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_hostname
         in
         ("server_hostname", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_nfs

[@@@deriving.end]

let mount_options ?version () : mount_options = { version }
let on_prem_config ~agent_arns () : on_prem_config = { agent_arns }

let aws_datasync_location_nfs ?id ?tags ?tags_all
    ?(mount_options = []) ~server_hostname ~subdirectory
    ~on_prem_config () : aws_datasync_location_nfs =
  {
    id;
    server_hostname;
    subdirectory;
    tags;
    tags_all;
    mount_options;
    on_prem_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

let make ?id ?tags ?tags_all ?(mount_options = []) ~server_hostname
    ~subdirectory ~on_prem_config __id =
  let __type = "aws_datasync_location_nfs" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       server_hostname = Prop.computed __type __id "server_hostname";
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
      yojson_of_aws_datasync_location_nfs
        (aws_datasync_location_nfs ?id ?tags ?tags_all ~mount_options
           ~server_hostname ~subdirectory ~on_prem_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(mount_options = [])
    ~server_hostname ~subdirectory ~on_prem_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~mount_options ~server_hostname
      ~subdirectory ~on_prem_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
