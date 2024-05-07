(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_credentials = {
  db_name : string prop option; [@option]
  duration_seconds : float prop option; [@option]
  id : string prop option; [@option]
  workgroup_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_credentials) -> ()

let yojson_of_aws_redshiftserverless_credentials =
  (function
   | {
       db_name = v_db_name;
       duration_seconds = v_duration_seconds;
       id = v_id;
       workgroup_name = v_workgroup_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workgroup_name
         in
         ("workgroup_name", arg) :: bnds
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
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_credentials

[@@@deriving.end]

let aws_redshiftserverless_credentials ?db_name ?duration_seconds ?id
    ~workgroup_name () : aws_redshiftserverless_credentials =
  { db_name; duration_seconds; id; workgroup_name }

type t = {
  tf_name : string;
  db_name : string prop;
  db_password : string prop;
  db_user : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
  workgroup_name : string prop;
}

let make ?db_name ?duration_seconds ?id ~workgroup_name __id =
  let __type = "aws_redshiftserverless_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       db_name = Prop.computed __type __id "db_name";
       db_password = Prop.computed __type __id "db_password";
       db_user = Prop.computed __type __id "db_user";
       duration_seconds =
         Prop.computed __type __id "duration_seconds";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_credentials
        (aws_redshiftserverless_credentials ?db_name
           ?duration_seconds ?id ~workgroup_name ());
    attrs = __attrs;
  }

let register ?tf_module ?db_name ?duration_seconds ?id
    ~workgroup_name __id =
  let (r : _ Tf_core.resource) =
    make ?db_name ?duration_seconds ?id ~workgroup_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
