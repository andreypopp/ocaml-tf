(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ebs_encryption_by_default = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_encryption_by_default) -> ()

let yojson_of_aws_ebs_encryption_by_default =
  (function
   | { enabled = v_enabled; id = v_id } ->
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
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ebs_encryption_by_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_encryption_by_default

[@@@deriving.end]

let aws_ebs_encryption_by_default ?enabled ?id () :
    aws_ebs_encryption_by_default =
  { enabled; id }

type t = { enabled : bool prop; id : string prop }

let make ?enabled ?id __id =
  let __type = "aws_ebs_encryption_by_default" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_encryption_by_default
        (aws_ebs_encryption_by_default ?enabled ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id __id =
  let (r : _ Tf_core.resource) = make ?enabled ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
