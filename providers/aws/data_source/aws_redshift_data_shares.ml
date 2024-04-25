(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_shares = unit [@@deriving_inline yojson_of]

let _ = fun (_ : data_shares) -> ()

let yojson_of_data_shares =
  (yojson_of_unit : data_shares -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_shares

[@@@deriving.end]

type aws_redshift_data_shares = { data_shares : data_shares list }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_data_shares) -> ()

let yojson_of_aws_redshift_data_shares =
  (function
   | { data_shares = v_data_shares } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_shares v_data_shares
         in
         ("data_shares", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_data_shares -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_data_shares

[@@@deriving.end]

let data_shares () = ()

let aws_redshift_data_shares ?(data_shares = []) () :
    aws_redshift_data_shares =
  { data_shares }

type t = { id : string prop }

let make ?(data_shares = []) __id =
  let __type = "aws_redshift_data_shares" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_data_shares
        (aws_redshift_data_shares ~data_shares ());
    attrs = __attrs;
  }

let register ?tf_module ?(data_shares = []) __id =
  let (r : _ Tf_core.resource) = make ~data_shares __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
