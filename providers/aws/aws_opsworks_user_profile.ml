(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opsworks_user_profile = {
  allow_self_management : bool prop option; [@option]
  id : string prop option; [@option]
  ssh_public_key : string prop option; [@option]
  ssh_username : string prop;
  user_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_user_profile) -> ()

let yojson_of_aws_opsworks_user_profile =
  (function
   | {
       allow_self_management = v_allow_self_management;
       id = v_id;
       ssh_public_key = v_ssh_public_key;
       ssh_username = v_ssh_username;
       user_arn = v_user_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_arn in
         ("user_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ssh_username in
         ("ssh_username", arg) :: bnds
       in
       let bnds =
         match v_ssh_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_public_key", arg in
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
         match v_allow_self_management with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_self_management", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_user_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_user_profile

[@@@deriving.end]

let aws_opsworks_user_profile ?allow_self_management ?id
    ?ssh_public_key ~ssh_username ~user_arn () :
    aws_opsworks_user_profile =
  {
    allow_self_management;
    id;
    ssh_public_key;
    ssh_username;
    user_arn;
  }

type t = {
  tf_name : string;
  allow_self_management : bool prop;
  id : string prop;
  ssh_public_key : string prop;
  ssh_username : string prop;
  user_arn : string prop;
}

let make ?allow_self_management ?id ?ssh_public_key ~ssh_username
    ~user_arn __id =
  let __type = "aws_opsworks_user_profile" in
  let __attrs =
    ({
       tf_name = __id;
       allow_self_management =
         Prop.computed __type __id "allow_self_management";
       id = Prop.computed __type __id "id";
       ssh_public_key = Prop.computed __type __id "ssh_public_key";
       ssh_username = Prop.computed __type __id "ssh_username";
       user_arn = Prop.computed __type __id "user_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_user_profile
        (aws_opsworks_user_profile ?allow_self_management ?id
           ?ssh_public_key ~ssh_username ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_self_management ?id ?ssh_public_key
    ~ssh_username ~user_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_self_management ?id ?ssh_public_key ~ssh_username
      ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
