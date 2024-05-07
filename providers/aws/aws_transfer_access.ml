(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type home_directory_mappings = {
  entry : string prop;
  target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : home_directory_mappings) -> ()

let yojson_of_home_directory_mappings =
  (function
   | { entry = v_entry; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entry in
         ("entry", arg) :: bnds
       in
       `Assoc bnds
    : home_directory_mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_home_directory_mappings

[@@@deriving.end]

type posix_profile = {
  gid : float prop;
  secondary_gids : float prop list option; [@option]
  uid : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : posix_profile) -> ()

let yojson_of_posix_profile =
  (function
   | { gid = v_gid; secondary_gids = v_secondary_gids; uid = v_uid }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         match v_secondary_gids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "secondary_gids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_gid in
         ("gid", arg) :: bnds
       in
       `Assoc bnds
    : posix_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_posix_profile

[@@@deriving.end]

type aws_transfer_access = {
  external_id : string prop;
  home_directory : string prop option; [@option]
  home_directory_type : string prop option; [@option]
  id : string prop option; [@option]
  policy : string prop option; [@option]
  role : string prop option; [@option]
  server_id : string prop;
  home_directory_mappings : home_directory_mappings list;
  posix_profile : posix_profile list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_access) -> ()

let yojson_of_aws_transfer_access =
  (function
   | {
       external_id = v_external_id;
       home_directory = v_home_directory;
       home_directory_type = v_home_directory_type;
       id = v_id;
       policy = v_policy;
       role = v_role;
       server_id = v_server_id;
       home_directory_mappings = v_home_directory_mappings;
       posix_profile = v_posix_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_posix_profile v_posix_profile
         in
         ("posix_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_home_directory_mappings
             v_home_directory_mappings
         in
         ("home_directory_mappings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
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
         match v_home_directory_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_directory_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_home_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_directory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_id in
         ("external_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_access

[@@@deriving.end]

let home_directory_mappings ~entry ~target () :
    home_directory_mappings =
  { entry; target }

let posix_profile ?secondary_gids ~gid ~uid () : posix_profile =
  { gid; secondary_gids; uid }

let aws_transfer_access ?home_directory ?home_directory_type ?id
    ?policy ?role ?(home_directory_mappings = [])
    ?(posix_profile = []) ~external_id ~server_id () :
    aws_transfer_access =
  {
    external_id;
    home_directory;
    home_directory_type;
    id;
    policy;
    role;
    server_id;
    home_directory_mappings;
    posix_profile;
  }

type t = {
  tf_name : string;
  external_id : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
}

let make ?home_directory ?home_directory_type ?id ?policy ?role
    ?(home_directory_mappings = []) ?(posix_profile = [])
    ~external_id ~server_id __id =
  let __type = "aws_transfer_access" in
  let __attrs =
    ({
       tf_name = __id;
       external_id = Prop.computed __type __id "external_id";
       home_directory = Prop.computed __type __id "home_directory";
       home_directory_type =
         Prop.computed __type __id "home_directory_type";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       role = Prop.computed __type __id "role";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_access
        (aws_transfer_access ?home_directory ?home_directory_type ?id
           ?policy ?role ~home_directory_mappings ~posix_profile
           ~external_id ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?home_directory ?home_directory_type ?id
    ?policy ?role ?(home_directory_mappings = [])
    ?(posix_profile = []) ~external_id ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?home_directory ?home_directory_type ?id ?policy ?role
      ~home_directory_mappings ~posix_profile ~external_id ~server_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
