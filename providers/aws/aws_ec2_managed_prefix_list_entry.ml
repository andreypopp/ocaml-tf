(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_managed_prefix_list_entry = {
  cidr : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  prefix_list_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_managed_prefix_list_entry) -> ()

let yojson_of_aws_ec2_managed_prefix_list_entry =
  (function
   | {
       cidr = v_cidr;
       description = v_description;
       id = v_id;
       prefix_list_id = v_prefix_list_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_managed_prefix_list_entry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_managed_prefix_list_entry

[@@@deriving.end]

let aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
    ~prefix_list_id () : aws_ec2_managed_prefix_list_entry =
  { cidr; description; id; prefix_list_id }

type t = {
  cidr : string prop;
  description : string prop;
  id : string prop;
  prefix_list_id : string prop;
}

let make ?description ?id ~cidr ~prefix_list_id __id =
  let __type = "aws_ec2_managed_prefix_list_entry" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_managed_prefix_list_entry
        (aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
           ~prefix_list_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~cidr ~prefix_list_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~cidr ~prefix_list_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
