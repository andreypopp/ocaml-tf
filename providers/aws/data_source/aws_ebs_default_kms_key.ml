(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ebs_default_kms_key = {
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_default_kms_key) -> ()

let yojson_of_aws_ebs_default_kms_key =
  (function
   | { id = v_id; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
    : aws_ebs_default_kms_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_default_kms_key

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_ebs_default_kms_key ?id ?timeouts () :
    aws_ebs_default_kms_key =
  { id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  key_arn : string prop;
}

let make ?id ?timeouts __id =
  let __type = "aws_ebs_default_kms_key" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key_arn = Prop.computed __type __id "key_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_default_kms_key
        (aws_ebs_default_kms_key ?id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
