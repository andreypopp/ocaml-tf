(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_secretsmanager_secret_version = {
  id : string prop option; [@option]
  secret_binary : string prop option; [@option]
  secret_id : string prop;
  secret_string : string prop option; [@option]
  version_stages : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret_version) -> ()

let yojson_of_aws_secretsmanager_secret_version =
  (function
   | {
       id = v_id;
       secret_binary = v_secret_binary;
       secret_id = v_secret_id;
       secret_string = v_secret_string;
       version_stages = v_version_stages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_stages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "version_stages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_string", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         match v_secret_binary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_binary", arg in
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
       `Assoc bnds
    : aws_secretsmanager_secret_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_secret_version

[@@@deriving.end]

let aws_secretsmanager_secret_version ?id ?secret_binary
    ?secret_string ?version_stages ~secret_id () :
    aws_secretsmanager_secret_version =
  { id; secret_binary; secret_id; secret_string; version_stages }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  secret_binary : string prop;
  secret_id : string prop;
  secret_string : string prop;
  version_id : string prop;
  version_stages : string list prop;
}

let make ?id ?secret_binary ?secret_string ?version_stages ~secret_id
    __id =
  let __type = "aws_secretsmanager_secret_version" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       secret_binary = Prop.computed __type __id "secret_binary";
       secret_id = Prop.computed __type __id "secret_id";
       secret_string = Prop.computed __type __id "secret_string";
       version_id = Prop.computed __type __id "version_id";
       version_stages = Prop.computed __type __id "version_stages";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret_version
        (aws_secretsmanager_secret_version ?id ?secret_binary
           ?secret_string ?version_stages ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?secret_binary ?secret_string
    ?version_stages ~secret_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?secret_binary ?secret_string ?version_stages ~secret_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
