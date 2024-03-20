(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_connection_association = {
  connection_id : string prop;
  id : string prop option; [@option]
  lag_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_connection_association) -> ()

let yojson_of_aws_dx_connection_association =
  (function
   | {
       connection_id = v_connection_id;
       id = v_id;
       lag_id = v_lag_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lag_id in
         ("lag_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_dx_connection_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_connection_association

[@@@deriving.end]

let aws_dx_connection_association ?id ~connection_id ~lag_id () :
    aws_dx_connection_association =
  { connection_id; id; lag_id }

type t = {
  connection_id : string prop;
  id : string prop;
  lag_id : string prop;
}

let make ?id ~connection_id ~lag_id __id =
  let __type = "aws_dx_connection_association" in
  let __attrs =
    ({
       connection_id = Prop.computed __type __id "connection_id";
       id = Prop.computed __type __id "id";
       lag_id = Prop.computed __type __id "lag_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_connection_association
        (aws_dx_connection_association ?id ~connection_id ~lag_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~connection_id ~lag_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~connection_id ~lag_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
