(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_cluster_credentials = {
  auto_create : bool prop option; [@option]
  cluster_identifier : string prop;
  db_groups : string prop list option; [@option]
  db_name : string prop option; [@option]
  db_user : string prop;
  duration_seconds : float prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_cluster_credentials) -> ()

let yojson_of_aws_redshift_cluster_credentials =
  (function
   | {
       auto_create = v_auto_create;
       cluster_identifier = v_cluster_identifier;
       db_groups = v_db_groups;
       db_name = v_db_name;
       db_user = v_db_user;
       duration_seconds = v_duration_seconds;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_user in
         ("db_user", arg) :: bnds
       in
       let bnds =
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "db_groups", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_auto_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_cluster_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_cluster_credentials

[@@@deriving.end]

let aws_redshift_cluster_credentials ?auto_create ?db_groups ?db_name
    ?duration_seconds ?id ~cluster_identifier ~db_user () :
    aws_redshift_cluster_credentials =
  {
    auto_create;
    cluster_identifier;
    db_groups;
    db_name;
    db_user;
    duration_seconds;
    id;
  }

type t = {
  auto_create : bool prop;
  cluster_identifier : string prop;
  db_groups : string list prop;
  db_name : string prop;
  db_password : string prop;
  db_user : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
}

let make ?auto_create ?db_groups ?db_name ?duration_seconds ?id
    ~cluster_identifier ~db_user __id =
  let __type = "aws_redshift_cluster_credentials" in
  let __attrs =
    ({
       auto_create = Prop.computed __type __id "auto_create";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       db_groups = Prop.computed __type __id "db_groups";
       db_name = Prop.computed __type __id "db_name";
       db_password = Prop.computed __type __id "db_password";
       db_user = Prop.computed __type __id "db_user";
       duration_seconds =
         Prop.computed __type __id "duration_seconds";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_cluster_credentials
        (aws_redshift_cluster_credentials ?auto_create ?db_groups
           ?db_name ?duration_seconds ?id ~cluster_identifier
           ~db_user ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create ?db_groups ?db_name
    ?duration_seconds ?id ~cluster_identifier ~db_user __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create ?db_groups ?db_name ?duration_seconds ?id
      ~cluster_identifier ~db_user __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
