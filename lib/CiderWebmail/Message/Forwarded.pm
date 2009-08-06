package CiderWebmail::Message::Forwarded;

use Moose;

extends 'CiderWebmail::Message';

sub get_header {
    my ($self, $header) = @_;

    my $data = $self->entity->head->get($header);
    chomp $data if defined $data;
    return $self->c->model('IMAPClient')->transform_header($self->c, { header => $header, data => $data });
}

sub header_formatted {
    my ($self) = @_;

    return $self->entity->head->as_string;
}

sub mark_read {
    # no use in marking an embedded message
    return;
}

sub delete {
    # no use in deleting an embedded message
    return;
}

sub move {
    # no use in deleting an embedded message
    return;
}

sub as_string {
    my ($self) = @_;

    return $self->entity->as_string;
}

1;
