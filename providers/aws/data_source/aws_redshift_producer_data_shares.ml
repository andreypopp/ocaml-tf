(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_shares = unit [@@deriving_inline yojson_of]

let _ = fun (_ : data_shares) -> ()

let yojson_of_data_shares =
  (yojson_of_unit : data_shares -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_shares

[@@@deriving.end]

type aws_redshift_producer_data_shares = {
  producer_arn : string prop;
  status : string prop option; [@option]
  data_shares : data_shares list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_producer_data_shares) -> ()

let yojson_of_aws_redshift_producer_data_shares =
  (function
   | {
       producer_arn = v_producer_arn;
       status = v_status;
       data_shares = v_data_shares;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_shares then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_shares) v_data_shares
           in
           let bnd = "data_shares", arg in
           bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_producer_arn in
         ("producer_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_producer_data_shares ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_producer_data_shares

[@@@deriving.end]

let data_shares () = ()

let aws_redshift_producer_data_shares ?status ?(data_shares = [])
    ~producer_arn () : aws_redshift_producer_data_shares =
  { producer_arn; status; data_shares }

type t = {
  tf_name : string;
  id : string prop;
  producer_arn : string prop;
  status : string prop;
}

let make ?status ?(data_shares = []) ~producer_arn __id =
  let __type = "aws_redshift_producer_data_shares" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       producer_arn = Prop.computed __type __id "producer_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_producer_data_shares
        (aws_redshift_producer_data_shares ?status ~data_shares
           ~producer_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?status ?(data_shares = []) ~producer_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?status ~data_shares ~producer_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
