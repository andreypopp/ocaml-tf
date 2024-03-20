(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_dhcp_options_association = {
  dhcp_options_id : string prop;
  id : string prop option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_dhcp_options_association) -> ()

let yojson_of_aws_vpc_dhcp_options_association =
  (function
   | {
       dhcp_options_id = v_dhcp_options_id;
       id = v_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_dhcp_options_id
         in
         ("dhcp_options_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_dhcp_options_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_dhcp_options_association

[@@@deriving.end]

let aws_vpc_dhcp_options_association ?id ~dhcp_options_id ~vpc_id ()
    : aws_vpc_dhcp_options_association =
  { dhcp_options_id; id; vpc_id }

type t = {
  dhcp_options_id : string prop;
  id : string prop;
  vpc_id : string prop;
}

let make ?id ~dhcp_options_id ~vpc_id __id =
  let __type = "aws_vpc_dhcp_options_association" in
  let __attrs =
    ({
       dhcp_options_id = Prop.computed __type __id "dhcp_options_id";
       id = Prop.computed __type __id "id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_dhcp_options_association
        (aws_vpc_dhcp_options_association ?id ~dhcp_options_id
           ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~dhcp_options_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~dhcp_options_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
