(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eip_association = {
  allocation_id : string prop option; [@option]
  allow_reassociation : bool prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop option; [@option]
  network_interface_id : string prop option; [@option]
  private_ip_address : string prop option; [@option]
  public_ip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eip_association) -> ()

let yojson_of_aws_eip_association =
  (function
   | {
       allocation_id = v_allocation_id;
       allow_reassociation = v_allow_reassociation;
       id = v_id;
       instance_id = v_instance_id;
       network_interface_id = v_network_interface_id;
       private_ip_address = v_private_ip_address;
       public_ip = v_public_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_id", arg in
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
         match v_allow_reassociation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_reassociation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_eip_association -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eip_association

[@@@deriving.end]

let aws_eip_association ?allocation_id ?allow_reassociation ?id
    ?instance_id ?network_interface_id ?private_ip_address ?public_ip
    () : aws_eip_association =
  {
    allocation_id;
    allow_reassociation;
    id;
    instance_id;
    network_interface_id;
    private_ip_address;
    public_ip;
  }

type t = {
  tf_name : string;
  allocation_id : string prop;
  allow_reassociation : bool prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  public_ip : string prop;
}

let make ?allocation_id ?allow_reassociation ?id ?instance_id
    ?network_interface_id ?private_ip_address ?public_ip __id =
  let __type = "aws_eip_association" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_id = Prop.computed __type __id "allocation_id";
       allow_reassociation =
         Prop.computed __type __id "allow_reassociation";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       public_ip = Prop.computed __type __id "public_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eip_association
        (aws_eip_association ?allocation_id ?allow_reassociation ?id
           ?instance_id ?network_interface_id ?private_ip_address
           ?public_ip ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_id ?allow_reassociation ?id
    ?instance_id ?network_interface_id ?private_ip_address ?public_ip
    __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_id ?allow_reassociation ?id ?instance_id
      ?network_interface_id ?private_ip_address ?public_ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
