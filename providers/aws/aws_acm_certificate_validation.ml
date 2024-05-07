(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_acm_certificate_validation = {
  certificate_arn : string prop;
  id : string prop option; [@option]
  validation_record_fqdns : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acm_certificate_validation) -> ()

let yojson_of_aws_acm_certificate_validation =
  (function
   | {
       certificate_arn = v_certificate_arn;
       id = v_id;
       validation_record_fqdns = v_validation_record_fqdns;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_validation_record_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "validation_record_fqdns", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_acm_certificate_validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acm_certificate_validation

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_acm_certificate_validation ?id ?validation_record_fqdns
    ?timeouts ~certificate_arn () : aws_acm_certificate_validation =
  { certificate_arn; id; validation_record_fqdns; timeouts }

type t = {
  tf_name : string;
  certificate_arn : string prop;
  id : string prop;
  validation_record_fqdns : string list prop;
}

let make ?id ?validation_record_fqdns ?timeouts ~certificate_arn __id
    =
  let __type = "aws_acm_certificate_validation" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_arn = Prop.computed __type __id "certificate_arn";
       id = Prop.computed __type __id "id";
       validation_record_fqdns =
         Prop.computed __type __id "validation_record_fqdns";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acm_certificate_validation
        (aws_acm_certificate_validation ?id ?validation_record_fqdns
           ?timeouts ~certificate_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validation_record_fqdns ?timeouts
    ~certificate_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validation_record_fqdns ?timeouts ~certificate_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
