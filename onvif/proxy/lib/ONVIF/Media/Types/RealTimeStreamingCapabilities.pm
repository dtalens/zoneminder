package ONVIF::Media::Types::RealTimeStreamingCapabilities;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RTPMulticast_of :ATTR(:get<RTPMulticast>);
my %RTP_TCP_of :ATTR(:get<RTP_TCP>);
my %RTP_RTSP_TCP_of :ATTR(:get<RTP_RTSP_TCP>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        RTPMulticast
        RTP_TCP
        RTP_RTSP_TCP
        Extension

    ) ],
    {
        'RTPMulticast' => \%RTPMulticast_of,
        'RTP_TCP' => \%RTP_TCP_of,
        'RTP_RTSP_TCP' => \%RTP_RTSP_TCP_of,
        'Extension' => \%Extension_of,
    },
    {
        'RTPMulticast' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'RTP_TCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'RTP_RTSP_TCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'Extension' => 'ONVIF::Media::Types::RealTimeStreamingCapabilitiesExtension',
    },
    {

        'RTPMulticast' => 'RTPMulticast',
        'RTP_TCP' => 'RTP_TCP',
        'RTP_RTSP_TCP' => 'RTP_RTSP_TCP',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::RealTimeStreamingCapabilities

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RealTimeStreamingCapabilities from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RTPMulticast


=item * RTP_TCP


=item * RTP_RTSP_TCP


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::RealTimeStreamingCapabilities
   RTPMulticast =>  $some_value, # boolean
   RTP_TCP =>  $some_value, # boolean
   RTP_RTSP_TCP =>  $some_value, # boolean
   Extension =>  { # ONVIF::Media::Types::RealTimeStreamingCapabilitiesExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

