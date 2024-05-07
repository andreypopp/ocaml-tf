(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_sites = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_sites) -> ()

let yojson_of_aws_outposts_sites =
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
    : aws_outposts_sites -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_sites

[@@@deriving.end]

let aws_outposts_sites ?id () : aws_outposts_sites = { id }

type t = {
  tf_name : string;
  id : string prop;
  ids : string list prop;
}

let make ?id __id =
  let __type = "aws_outposts_sites" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_outposts_sites (aws_outposts_sites ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
