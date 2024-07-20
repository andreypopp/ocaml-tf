(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_ssh_key = {
  body : string prop;
  id : string prop option; [@option]
  server_id : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_ssh_key) -> ()

let yojson_of_aws_transfer_ssh_key =
  (function
   | {
       body = v_body;
       id = v_id;
       server_id = v_server_id;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_ssh_key

[@@@deriving.end]

let aws_transfer_ssh_key ?id ~body ~server_id ~user_name () :
    aws_transfer_ssh_key =
  { body; id; server_id; user_name }

type t = {
  tf_name : string;
  body : string prop;
  id : string prop;
  server_id : string prop;
  ssh_key_id : string prop;
  user_name : string prop;
}

let make ?id ~body ~server_id ~user_name __id =
  let __type = "aws_transfer_ssh_key" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
       ssh_key_id = Prop.computed __type __id "ssh_key_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_ssh_key
        (aws_transfer_ssh_key ?id ~body ~server_id ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~body ~server_id ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~body ~server_id ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
