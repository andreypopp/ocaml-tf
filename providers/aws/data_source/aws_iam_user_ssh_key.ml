(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_ssh_key = {
  encoding : string prop;
  id : string prop option; [@option]
  ssh_public_key_id : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_user_ssh_key) -> ()

let yojson_of_aws_iam_user_ssh_key =
  (function
   | {
       encoding = v_encoding;
       id = v_id;
       ssh_public_key_id = v_ssh_public_key_id;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_public_key_id
         in
         ("ssh_public_key_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_user_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_user_ssh_key

[@@@deriving.end]

let aws_iam_user_ssh_key ?id ~encoding ~ssh_public_key_id ~username
    () : aws_iam_user_ssh_key =
  { encoding; id; ssh_public_key_id; username }

type t = {
  encoding : string prop;
  fingerprint : string prop;
  id : string prop;
  public_key : string prop;
  ssh_public_key_id : string prop;
  status : string prop;
  username : string prop;
}

let make ?id ~encoding ~ssh_public_key_id ~username __id =
  let __type = "aws_iam_user_ssh_key" in
  let __attrs =
    ({
       encoding = Prop.computed __type __id "encoding";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       public_key = Prop.computed __type __id "public_key";
       ssh_public_key_id =
         Prop.computed __type __id "ssh_public_key_id";
       status = Prop.computed __type __id "status";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_ssh_key
        (aws_iam_user_ssh_key ?id ~encoding ~ssh_public_key_id
           ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~encoding ~ssh_public_key_id ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~encoding ~ssh_public_key_id ~username __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
