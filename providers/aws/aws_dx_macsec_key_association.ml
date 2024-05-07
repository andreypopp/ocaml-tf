(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_macsec_key_association = {
  cak : string prop option; [@option]
  ckn : string prop option; [@option]
  connection_id : string prop;
  id : string prop option; [@option]
  secret_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_macsec_key_association) -> ()

let yojson_of_aws_dx_macsec_key_association =
  (function
   | {
       cak = v_cak;
       ckn = v_ckn;
       connection_id = v_connection_id;
       id = v_id;
       secret_arn = v_secret_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       let bnds =
         match v_ckn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ckn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cak with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cak", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dx_macsec_key_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_macsec_key_association

[@@@deriving.end]

let aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
    ~connection_id () : aws_dx_macsec_key_association =
  { cak; ckn; connection_id; id; secret_arn }

type t = {
  tf_name : string;
  cak : string prop;
  ckn : string prop;
  connection_id : string prop;
  id : string prop;
  secret_arn : string prop;
  start_on : string prop;
  state : string prop;
}

let make ?cak ?ckn ?id ?secret_arn ~connection_id __id =
  let __type = "aws_dx_macsec_key_association" in
  let __attrs =
    ({
       tf_name = __id;
       cak = Prop.computed __type __id "cak";
       ckn = Prop.computed __type __id "ckn";
       connection_id = Prop.computed __type __id "connection_id";
       id = Prop.computed __type __id "id";
       secret_arn = Prop.computed __type __id "secret_arn";
       start_on = Prop.computed __type __id "start_on";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_macsec_key_association
        (aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
           ~connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cak ?ckn ?id ?secret_arn ~connection_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?cak ?ckn ?id ?secret_arn ~connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
