(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_canonical_user_id = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_canonical_user_id) -> ()

let yojson_of_aws_canonical_user_id =
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
    : aws_canonical_user_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_canonical_user_id

[@@@deriving.end]

let aws_canonical_user_id ?id () : aws_canonical_user_id = { id }

type t = { display_name : string prop; id : string prop }

let make ?id __id =
  let __type = "aws_canonical_user_id" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_canonical_user_id (aws_canonical_user_id ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
