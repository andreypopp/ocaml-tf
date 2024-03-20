(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_partition = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_partition) -> ()

let yojson_of_aws_partition =
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
    : aws_partition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_partition

[@@@deriving.end]

let aws_partition ?id () : aws_partition = { id }

type t = {
  dns_suffix : string prop;
  id : string prop;
  partition : string prop;
  reverse_dns_prefix : string prop;
}

let make ?id __id =
  let __type = "aws_partition" in
  let __attrs =
    ({
       dns_suffix = Prop.computed __type __id "dns_suffix";
       id = Prop.computed __type __id "id";
       partition = Prop.computed __type __id "partition";
       reverse_dns_prefix =
         Prop.computed __type __id "reverse_dns_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_partition (aws_partition ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
