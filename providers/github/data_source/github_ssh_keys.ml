(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_ssh_keys = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : github_ssh_keys) -> ()

let yojson_of_github_ssh_keys =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : github_ssh_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_ssh_keys

[@@@deriving.end]

let github_ssh_keys ?id () : github_ssh_keys = { id }

type t = {
  tf_name : string;
  id : string prop;
  keys : string list prop;
}

let make ?id __id =
  let __type = "github_ssh_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       keys = Prop.computed __type __id "keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_github_ssh_keys (github_ssh_keys ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
