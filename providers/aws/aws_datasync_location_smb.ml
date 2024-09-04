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

type aws_datasync_location_smb = {
  agent_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : string prop option; [@option]
  id : string prop option; [@option]
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  user : string prop;
  mount_options : mount_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_smb) -> ()

let yojson_of_aws_datasync_location_smb =
  (function
   | {
       agent_arns = v_agent_arns;
       domain = v_domain;
       id = v_id;
       password = v_password;
       server_hostname = v_server_hostname;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       user = v_user;
       mount_options = v_mount_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
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
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
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
    : aws_datasync_location_smb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_smb

[@@@deriving.end]

let mount_options ?version () : mount_options = { version }

let aws_datasync_location_smb ?domain ?id ?tags ?tags_all
    ?(mount_options = []) ~agent_arns ~password ~server_hostname
    ~subdirectory ~user () : aws_datasync_location_smb =
  {
    agent_arns;
    domain;
    id;
    password;
    server_hostname;
    subdirectory;
    tags;
    tags_all;
    user;
    mount_options;
  }

type t = {
  tf_name : string;
  agent_arns : string list prop;
  arn : string prop;
  domain : string prop;
  id : string prop;
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
  user : string prop;
}

let make ?domain ?id ?tags ?tags_all ?(mount_options = [])
    ~agent_arns ~password ~server_hostname ~subdirectory ~user __id =
  let __type = "aws_datasync_location_smb" in
  let __attrs =
    ({
       tf_name = __id;
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       password = Prop.computed __type __id "password";
       server_hostname = Prop.computed __type __id "server_hostname";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_smb
        (aws_datasync_location_smb ?domain ?id ?tags ?tags_all
           ~mount_options ~agent_arns ~password ~server_hostname
           ~subdirectory ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?id ?tags ?tags_all
    ?(mount_options = []) ~agent_arns ~password ~server_hostname
    ~subdirectory ~user __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?id ?tags ?tags_all ~mount_options ~agent_arns
      ~password ~server_hostname ~subdirectory ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
